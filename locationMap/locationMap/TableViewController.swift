//
//  TableViewController.swift
//  locationMap
//
//  Created by Нурсат Шохатбек on 30.12.2023.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayAttraction = [
    Attractions(attraction: "Астана, Қазақстан", picture: "astana", location: "Астана", info: "6 мая 1998 года Указом Президента Казахстана, «учитывая ходатайства местных исполнительных и представительных органов, пожелания общественности города Акмолы и на основании заключения Государственной ономастической комиссии при Правительстве Республики Казахстан», город Акмола был переименован в город Астана[52]. Топоним Астана — из казахского астана — «столица», «столичный».Позднее день столицы был перенесён на 6 июля, так как именно в этот день Верховный Совет Казахстана принял постановление о переносе столицы страны, также это день рождения первого президента Республики Казахстан. День столицы является государственным праздником.В 1999 году Астана по решению ЮНЕСКО получила звание «город мира»[53].После обретения столичного статуса и организации особой экономической зоны «Астана — новый город» город стал вторым по величине в стране, и в нём реализуется множество современных архитектурно-градостроительных проектов. Численность населения возросла с 270 тыс. человек в 1996 до 700 тыс. в 2011 году, а территория города значительно расширена до площади более 700 км² за счёт сооружения нового административно-делового центра и других кварталов рядом.В Астане предусмотрено размещение ряда координирующих органов ЕвразЭС. В городе проходят и другие крупные мероприятия, в том числе спортивные. Так, например, в 2011 году Астана принимала 7-е зимние Азиатские игры[54]. Кроме того, в 2017 году город принял международную специализированную выставку Expo 2017.", addition: "В 2011 году должно было быть начато сооружение линии скоростного трамвая. Запланировано, что первый этап строительства легкорельсовой трамвайной линии протяжённостью 16,4 километра, который включает девять станций, планировалось завершить к 1 декабря 2013 года, но этом году строительство так и не началось. В ноябре 2013 года Нурсултан Назарбаев заявил об отказе от строительства ЛРТ из-за дороговизны, взамен было обещано запустить скоростные автобусы[75]. Строительство началось только в 2017 году со строительства эстакад, по которым пройдут поезда. Открытие планируется на 2023 год", latitude: 43.20086962156416,longitude: 76.89228329582062),
    Attractions(attraction: "Қайынды, Қазақстан", picture: "kayindi", location: "Алматы", info: " Каинды (каз. Қайыңды) — озеро Алматинской области Казахстана, популярное туристическое место в одном из ущелий Кунгей Алатау. Главная достопримечательность озера – ели, поднимающиеся прямо из воды.Озеро длиной около 400 м находится среди хвойного леса на высоте 1667 метров над уровнем моря[1] в одном из ущелий Кунгей Алатау.окружено осыпными каменистыми склонами и крутыми скалами. Выше озера — скальный тупик.Озеро интересно тем, что после затопления долины лес, росший в ней, не был уничтожен, а образовал уникальный пейзаж[источник не указан 1606 дней.Летом средняя температура воздуха доходит до +23 градусов, а воды до +6 градусов. Несмотря на низкую температуру воды, Каинды пользуется успехом у любителей дайвинга.", addition: "Вода в горном водоёме довольно чистая и прозрачная, в нём сохранились подводные лесные массивы, что создает уникальные по своей красоте водные пейзажи. Поэтому многие туристы приезжают к Каинды для дайвинга.Озеро находится в 280 километрах от Алматы, дорога занимает около 5 часов. Лучшее время для туризма – в июле и августе. В 8 километрах от Каинды, близ озера Колсай, можно остановиться на ночлег в гостевых домиках[3]",latitude: 43.20086962156416,longitude: 76.89228329582062),
    Attractions(attraction:  "Қожа Ахмет Йассауи, Қазақстан", picture:  "kozha", location:  "Туркистан", info: "Ходжа Ахмет Ясави - признанный глава тюркской ветви суфизма, мыслитель, поэт. Сохранилось его произведение Диван-и-хикмет(Книга мудрости - часто сокращенно употребляется под именем Хикметы). Биографические данные отрывочны. Известна точно дата смерти - 1166 . Отец Ахмета Ибрагим был известным шейхом в Сайраме.В 7 лет он лишился отца и мать отдала его на учение Арыстанбабу. Становление личности Ахмета связано с г. Ясы (одно из прежних названий г. Туркестана с VI по XV вв., по В. Бартольду), в который он, как отражено в Хикметах, прибыл в 17 лет. Позже он направился в Бухару, где проходил ученичество у Хамадани. Приобретя сан знатока суфизма, Ясави вернулся в Ясы и продолжил традицию, заложенную Арыстанбабом,о чем свидетельствует, в частности, факт, что самым первым его учеником, последователем стал сын Арыстанбаба - Мансур. К нему стекались толпы поклонников и паломников. Последние годы жизни он провел в подземелье (ныне оно найдено и реставрировано). О мотивации такого образа жизни Ясави говорит следующее: Достиг я возраста пророка, шестидесяти трех лет, с меня этого достаточно, нет необходимости жить сверх срока отведенного пророку", addition: "Существует, помимо этого, и простая, строго достоверная версия, касающаяся ближайших учителей Ясави. Линия идейного происхождения Ясави восходит к известной в истории центральноазиатского суфизма фигуре Абу' аль-Фармази из Туса (умер в 1084 г.). Его учениками были Ахмад ал-Газали (умер в 1126 г.) и Йусуф ал-Хамадани (1049-1140). Первый - младший брат известного в истории философского мистицизма суннитского теолога, законоведа, философа, автора трактата Воскрешение наук о вере. Полное его имя Абу Йакуб Йусуф ал-Хамадани ал-Бузакджирди. Родом Йусуф из курдской деревни в провинции Хамадани. Его рано потянуло к науке, для изучения которой он перебрался в Багдад, где он достиг блестящих и замеченных всеми успехов. Но он вдруг отказывается от классного руководства, которое ему было доверено, и от всяких теоретических спекуляций.",latitude: 43.20086962156416,longitude: 76.89228329582062),
    Attractions(attraction: "Бурабай", picture: "kokshetau", location: "Көкшетау", info: "В районе Кокшетау (Северный Казахстан) это место получило название Казахской Швейцарии.од раскаленным солнцем расстилается желтая степь, на горизонте встречаясь с зеленой полосой густого леса. Но за ней усталых путников ожидает удивительный, таинственный край с извилистыми горными хребтами, столетними деревьями, макушками касающихся небосвода, зачарованными озерами, с тихой рябью вод. Эту загадочную местность называют Бурабай или Боровое.", addition:  "Посетить курорт Бурабай стоит людям, которые любят собирать лекарственные травы, хотят отдохнуть душой и совершать длительные прогулки по лесным тропинкам. Это место известно во всем мире благодаря своим лечебным курортам, в которых практикуют интересную методику оздоровления при помощи кумыса.",latitude: 43.20086962156416,longitude: 76.89228329582062)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayAttraction.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let attractionLabel = cell.viewWithTag(1) as! UILabel
        attractionLabel.text = arrayAttraction[indexPath.row].attraction
        
        let distanceLabel = cell.viewWithTag(2) as! UILabel
        distanceLabel.text = arrayAttraction[indexPath.row].location
        
        let imageView = cell.viewWithTag(3) as! UIImageView
        imageView.image = UIImage(named: arrayAttraction[indexPath.row].picture)
        
         

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        detailVc.attraction = arrayAttraction[indexPath.row]
       
        
        navigationController?.show(detailVc, sender: self)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayAttraction.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
