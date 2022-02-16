//
//  TableSelectionTableViewController.swift
//  homework3
//
//  Created by Дмитро Вакулінський on 03.11.2021.
//

import UIKit

class TableSelectionTableViewController: UITableViewController {

    let fellows = [Fellowship(name: "Гендальф Сірий", image: UIImage(named: "gendalf") ?? UIImage(), desc: "Один із чарівників, Істарі, посланий до Середзем'я Валар. Він був головою Братства."),
                   Fellowship(name: "Арагорн, син Араторна", image: UIImage(named: "aragorn") ?? UIImage(), desc: "Ватажок дунедайн та останній спадкоємець трону Гондора та Арнора. Він очолив і вів Братство після втрати Гендальфа."),
                   Fellowship(name: "Боромир, син Денетора", image: UIImage(named: "boromir") ?? UIImage(), desc: "Головнокомандувач і спадкоємець намісника Гондору."),
                   Fellowship(name: "Леголас, син Трандуїла з Лихолісся", image: UIImage(named: "legolas") ?? UIImage(), desc: "Посланець від ельфів Лихолесся."),
                   Fellowship(name: "Гімлі, син Глоїна", image: UIImage(named: "gimli") ?? UIImage(), desc: "Гном із Самотньої гори."),
                   Fellowship(name: "Фродо Беггінс", image: UIImage(named: "frodo") ?? UIImage(), desc: "Хобіт із Шира, який був обраний Охоронцем Єдиного кільця."),
                   Fellowship(name: "Семуайз Гемджі", image: UIImage(named: "sam") ?? UIImage(), desc: "Хобіт, садівник, слуга та близький друг Фродо."),
                   Fellowship(name: "Меріадок «Меррі» Брендібак", image: UIImage(named: "meriadoc") ?? UIImage(), desc: "Хобіт, двоюрідний брат Фродо, він та Піпін були найкращими друзями."),
                   Fellowship(name: "Перегрін «Піпін» Тук", image: UIImage(named: "peregrine") ?? UIImage(), desc: "Хобіт, а також двоюрідний брат Фродо, наймолодший член Братства."),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fellows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fellowCell", for: indexPath)
        cell.textLabel?.text = fellows[indexPath.row].name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let illustrationVC = self.storyboard?.instantiateViewController(withIdentifier: "illustrationViewController") as? illustrationViewController {
            illustrationVC.fellowship = fellows[indexPath.row]
            self.navigationController?.pushViewController(illustrationVC, animated: true)
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
