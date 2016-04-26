//
//  EventTeamViewController.m
//  the-blue-alliance
//
//  Created by Zach Orr on 4/25/16.
//  Copyright © 2016 The Blue Alliance. All rights reserved.
//

#import "EventTeamViewController.h"
#import "TBATeamAtEventSummaryViewController.h"
#import "TBAMatchesViewController.h"
#import "TBAAwardsViewController.h"
#import "Event.h"
#import "Team.h"

static NSString *const SummaryViewControllerEmbed   = @"SummaryViewControllerEmbed";
static NSString *const MatchesViewControllerEmbed   = @"MatchesViewControllerEmbed";
static NSString *const StatsViewControllerEmbed     = @"StatsViewControllerEmbed";
static NSString *const AwardsViewControllerEmbed    = @"AwardsViewControllerEmbed";

typedef NS_ENUM(NSInteger, TBAEventTeamSegment) {
    TBAEventTeamSegmentSummary = 0,
    TBAEventTeamSegmentMatches,
    TBAEventTeamSegmentStats,
    TBAEventTeamSegmentAwards,
};

@interface EventTeamViewController ()

@property (nonatomic, strong) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic, strong) IBOutlet UIView *segmentedControlView;

@property (nonatomic, strong) TBATeamAtEventSummaryViewController *summaryViewController;
@property (nonatomic, strong) IBOutlet UIView *summaryView;

@property (nonatomic, strong) TBAMatchesViewController *matchesViewController;
@property (nonatomic, strong) IBOutlet UIView *matchesView;

@property (nonatomic, strong) IBOutlet UIView *statsView;

@property (nonatomic, strong) TBAAwardsViewController *awardsViewController;
@property (nonatomic, strong) IBOutlet UIView *awardsView;

@end

@implementation EventTeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self styleInterface];
}

#pragma mark - Private Methods

- (void)cancelRefreshes {
    NSArray *refreshTVCs = @[self.awardsViewController];
    for (TBARefreshTableViewController *refreshTVC in refreshTVCs) {
        if (refreshTVC) {
            [refreshTVC cancelRefresh];
        }
    }
}

#pragma mark - Interface Methods

- (void)styleInterface {
    self.segmentedControlView.backgroundColor = [UIColor primaryBlue];
    
    self.navigationTitleLabel.text = [NSString stringWithFormat:@"Team %@", self.team.teamNumber];
    self.navigationSubtitleLabel.text = [NSString stringWithFormat:@"@ %@", [self.event friendlyNameWithYear:YES]];
}

- (void)updateInterface {
    if (self.segmentedControl.selectedSegmentIndex == TBAEventTeamSegmentSummary) {
        [self showView:self.summaryView];
    } else if (self.segmentedControl.selectedSegmentIndex == TBAEventTeamSegmentMatches) {
        [self showView:self.matchesView];
        if (self.matchesViewController.fetchedResultsController.fetchedObjects.count == 0) {
            self.matchesViewController.refresh();
        }
    } else if (self.segmentedControl.selectedSegmentIndex == TBAEventTeamSegmentAwards) {
        [self showView:self.awardsView];
        if (self.awardsViewController.fetchedResultsController.fetchedObjects.count == 0) {
            self.awardsViewController.refresh();
        }
    }
    // TODO: Add stats
}

- (void)showView:(UIView *)showView {
    for (UIView *view in @[self.summaryView, self.matchesView, self.statsView, self.awardsView]) {
        view.hidden = (showView == view ? NO : YES);
    }
}

- (IBAction)segmentedControlValueChanged:(id)sender {
    [self cancelRefreshes];
    [self updateInterface];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:SummaryViewControllerEmbed]) {
        self.summaryViewController = segue.destinationViewController;
        self.summaryViewController.persistenceController = self.persistenceController;
        self.summaryViewController.event = self.event;
        self.summaryViewController.team = self.team;
        self.summaryViewController.eventRanking = self.eventRanking;
    } else if ([segue.identifier isEqualToString:MatchesViewControllerEmbed]) {
        self.matchesViewController = segue.destinationViewController;
        self.matchesViewController.persistenceController = self.persistenceController;
        self.matchesViewController.event = self.event;
        self.matchesViewController.team = self.team;
    } else if ([segue.identifier isEqualToString:AwardsViewControllerEmbed]) {
        self.awardsViewController = segue.destinationViewController;
        self.awardsViewController.persistenceController = self.persistenceController;
        self.awardsViewController.event = self.event;
        self.awardsViewController.team = self.team;
    }
}

@end
