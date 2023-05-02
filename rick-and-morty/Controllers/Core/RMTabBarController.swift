import UIKit

final class RMTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let characterNav = UINavigationController(rootViewController: characterVC)
        let locationNav = UINavigationController(rootViewController: locationVC)
        let episodeNav = UINavigationController(rootViewController: episodeVC)
        let settingsNav = UINavigationController(rootViewController: settingsVC)
        
        characterNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        locationNav.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        episodeNav.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        settingsNav.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [characterNav, locationNav, episodeNav, settingsNav] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [characterNav, locationNav, episodeNav, settingsNav],
            animated: true
        )
    }
}

