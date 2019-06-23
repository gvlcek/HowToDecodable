//
//  HomeViewController.swift
//  WeatherApp
//
//  Created by Guadalupe Vlcek on 27/10/2018.
//  Copyright © 2018 Guadalupe Vlček. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var forecasts:WeatherResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchWeather()
    }
    
    func fetchWeather(){
        WebService.fetchForecast(completionHandler: {(result: WeatherResponse) in
            self.forecasts = result
            DispatchQueue.main.sync(execute: {
                self.tableView.reloadData()
            })
        })
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return forecasts?.list.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeatherCell.identifier, for: indexPath) as! WeatherCell
        cell.titleLabel.text = forecasts?.list[indexPath.row].weather.first?.main ?? ""
        return cell
    }
}
