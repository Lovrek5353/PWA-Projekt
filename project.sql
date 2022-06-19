-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 03:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `username`, `password`) VALUES
(2, 'admin', '$2y$10$x/XUKYaPRMR5UKrJjOVxv.n.o'),
(3, 'guest', '$2y$10$gPtSe5LDZds2q/xo4RHpMegQe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(1, '15.06.2022.', 'Povijesni uspjeh Dine Levačić!', 'Levačić je ovime isplivala peti od tzv \"Velikih sedam\", sedam najvećih plivačkih maratona, a do ostvarenja cilja i isplivavanja svih sedam nedostaju joj još Sjeverni kanal i Cookov prolaz', 'Dvadesetšestogodišnja Splićanka je Gibraltarski tjesnac preplivala za tri sata i 3 minute u prilično izazovnim uvjetima na moru, priopćili su iz prateće ekipe.\r\n\r\nLevačić je ovime isplivala peti od tzv \"Velikih sedam\", sedam najvećih plivačkih maratona, a do ostvarenja cilja i isplivavanja svih sedam nedostaju joj još Sjeverni kanal između Irske i Velike Britanije i Cookov prolaz između Južnog otoka i Sjevernog otoka na Novom Zelandu.\r\n\r\nLevačić je prva Hrvatica koja je preplivala kanal La Manche, a postala je tek šesta osoba i druga žena u povijesti daljinskog plivanja koja je za 90 dana isplivala trostruku krunu daljinskog plivanja -  mostove Manhattana u New Yorku, kalifornijski zaljev od otoka Cataline do San Pedra, te La Manche.', '', 'sport', 1),
(2, '15.06.2022.', 'Cindrić jači od Duvnjaka: Barca i Kielce za naslov prvaka Europe', 'Barcelona se u nastavku odlijepila i razočarala njemačke navijače u Kölnu pobjedom 34-30. Cindrić je zabio tri gola, koliko i Duvnjak. Ranije je Kielce izbacio Veszprem', 'Rukometaši branitelja naslova Barcelone i poljskog Kielcea igrat će u finalu Lige prvaka u Kölnu.\r\n\r\nBarcelona je u polufinalu s 34-30 (19-18) svladala njemački Kiel zahvaljujući odličnom drugom dijelu, kada su se konačno, nakon posve izjednačenog prvog poluvremena, odvojili na četiri gola razlike (27-23) i mirno priveli dvoboj kraju.\r\nHrvatski reprezentativac Luka Cindrić postigao je tri gola kod Barcelone, u kojoj je najviše, čak 12, dao Španjolac Gomez Abello. Kod Kiela je Patrick Wienczek zabio sedam golova, a Domagoj Duvnjak je iz četiri šuta postigao tri gola.\r\nRukometaši poljskog Viva Kielcea prvi su finalisti Lige prvaka nakon što su u Kölnu svladali mađarski Telecom Veszprem s 37-35 (16-18) u reprizi finala 2016.\r\n\r\nU utakmici s puno golova Mađari su vodili cijelo prvo poluvrijeme, a Kielce je početkom drugog dijela serijom 4-0 i spektakularnim obranama vratar Wolffa otišlo na prednost od tri gola razlike (23-20) , što su sačuvali dokraja.\r\n\r\nU redovima Kielcea hrvatski play Igor Karačić zabio je pet golova, a najefikasniji je bio Moryto s osam pogodaka. Kod Veszprema najbolji hrvatski igrač Manuel Štrlek sa sedam golova.\r\n\r\nKielce će tražiti drugi naslov europskog u povijesti, a Barca svoj deseti. \r\n\r\nFinale se igra u nedjelju.\r\n\r\n', '', 'sport', 1),
(3, '15.06.2022.', 'Vaterpolisti otputovali na SP: \'Imamo čak osam debitanata\'', 'Vjerujem da smo to uspjeli i u vikend okupljanjima, na kojima smo inzirstirali kao nikada do sada, zbog želje da čim prije, brže i bolje formiramo tu kemiju i stvorimo pozitivno ozračje koje je potrebno za svaki veliki rezultat, rekao je izbornik Tucak', 'Nakon subotnjeg jutarnjeg treninga hrvatska muška vaterpolska reprezentacija zaputila se iz Zagreba prema Mađarskoj, gdje će od 21. lipnja do 3. srpnja sudjelovati na Svjetskom prvenstvu.\r\n\r\nPrije nego što dođu u Debrecen, gdje se odigravaju utakmice u skupini B, izabranici Ivice Tucka će odraditi još dva treninga s reprezentacijom domaćina u Budimpešti.\r\n\r\nHrvatska će natjecanje na Svjetskom prvenstvu započeti 21. lipnja (19.30) utakmicom protiv aktualnih olimpijskih doprvaka, reprezentacije Grčke. Dva dana poslije, 23. lipnja, (18.30) \"barakudama\" je suparnik izabrana vrsta Njemačke, dok će grupni dio natjecanja završiti 25. lipnja (18 sati) utakmicom protiv Japanaca.\r\n\r\n- Vjerujem da smo odradili sve što smo trebali u ovom kratkom vremenu. Naglasak je bio na tehničko-taktičkim detaljima i stvaranju potrebne kemije u reprezentaciji, kemije bez koje nema velikih rezultata - izjavio je izbornik Ivica Tucak uoči polaska prema Mađarskoj', '', 'sport', 1),
(4, '15.06.2022.', 'Nogometna utakmica za 33. godišnjicu HDZ-a: Plenković je tehnici', 'Iako premijer i predsjednik HDZ-a Andrej Plenković nije zaigrao nogomet na utakmici povodom 33. godišnjice osnutka stranke, pokazao je drugima kako tehnicira, dok je ministar Banožić i zaigrao', 'HDZ danas slavi 33. godišnjicu. U poslijepodnevnim satima su položili vijenac kod spomen-ploče Franji Tuđmanu, a zatim održali sjednicu Nacionalnog odbora Zajednice utemeljitelja HDZ-a. \r\n\r\nNakon toga je započela i nogometna utakmica. Predsjednik stranke Andrej Plenković ne igra, ali je prije početka u odijelu pokazao što zna, dok je među igračima i ministar obrane Mario Banožić. ', '', 'politika', 0),
(5, '15.06.2022.', 'Hrvatska i Turska će jačati političke i gospodarske odnose', 'Razgovarali su o sigurnosnim temama, energetskim izazovima te gospodarskoj suradnji Hrvatske i Turske, priopćili su iz Vlade', 'Predsjednik Vlade Andrej Plenković primio je petak turskog ministra vanjskih poslova Mevluta Cavusoglua i na sastanku je zaključeno da dvije zemlje dijele stavove o važnosti pune ravnopravnosti tri konstitutivna naroda u BiH, kao i jačanja odnosa Hrvata i Bošnjaka u Federaciji.\r\n\r\nPredsjednik Vlade Andrej Plenković i turski ministar razgovarali su u Banskim dvorima o sigurnosnim temama, energetskim izazovima te gospodarskoj suradnji Hrvatske i Turske, priopćila je Vlada.\r\nRazgovaralo se i o stanju u Bosni i Hercegovini.\r\n\r\n\"Hrvatska i Turska dijele stavove o važnosti pune ravnopravnosti tri konstitutivna naroda u BiH, kao i jačanja odnosa Hrvata i Bošnjaka u Federaciji. U tom kontekstu postojeći trilateralni okvir, na razini ministara vanjskih poslova Hrvatske, Turske i BiH, treba iskoristiti kao važan diplomatski instrument za produbljivanje hrvatsko-bošnjačkog dijaloga u BiH i pomoći u rješavanju otvorenih pitanja\", navodi se u prioćenju.', '', 'politika', 0),
(6, '15.06.2022.', 'Tomislav Sokol: Europska sredstva našim građanima će osigurati z', 'Ulaganje u zdravstvo putem kohezijskih sredstava predstavlja važan faktor za regionalni razvoj i konkurentnost u Hrvatskoj, ali i u cijeloj EU, rekao je zastupnik', 'Na sjednici Odbora za regionalni razvoj (REGI) Europskog parlamenta u Bruxellesu raspravljalo se o primjeni i učincima kohezijske politike. Zastupnik u Europskom parlamentu doc. dr. sc. Tomislav Sokol istaknuo je važnost kohezijskih ulaganja u zdravstvenu zaštitu i bolju kvalitetu liječenja s ciljem postizanja jednake kvalitete liječenja u svim dijelovima Hrvatske i EU.\r\n\r\n?Da bismo osigurali bolji i učinkovitiji zdravstveni sustav te podigli zdravstveni standard u Hrvatskoj potrebno je kohezijska sredstva ulagati u obnovu i modernizaciju infrastrukture, uključujući najsuvremeniju opremu da bi se poboljšalo pružanje zdravstvenih usluga. Također, nužno je ulagati u povećanje broja zdravstvenih radnika te njihovo zadržavanje u Hrvatskoj, digitalizaciju našeg zdravstvenog sustava te prevenciju bolesti? ? naglasio je zastupnik Sokol.\r\nPodsjetimo, kohezijska politika predstavlja snažan instrument Europske unije za promicanje i podupiranje ukupnog skladnog razvoja njezinih država članica i regija, a znatan udio aktivnosti i proračuna EU posvećuje se upravo smanjenju razlika među regijama, s posebnim naglaskom na ruralna područja, područja zahvaćena industrijskom tranzicijom i regijama suočenima s teškim i trajnim demografskim poteškoćama.\r\n\r\n?Kohezijska politika jedna je od temeljnih investicijskih politika EU te svojim fondovima doprinosi jačanju ekonomske, socijalne i teritorijalne kohezije Unije, promicanju rasta i zapošljavanja, posebno u regijama koje zaostaju u razvoju. U tu svrhu koristi se oko trećine proračuna na razini Unije što čini kohezijsku politiku ne samo najvažnijom investicijskom politikom EU-a, već i izrazom solidarnosti Europske unije i država članica. Upravo zbog toga, ulaganje u zdravstvo putem kohezijskih sredstava predstavlja važan faktor za regionalni razvoj i konkurentnost u Hrvatskoj, ali i u cijeloj EU? ? rekao je zastupnik Sokol.\r\n\r\n?Nužno je da uz pomoć europskih sredstava nastavimo jačati zdravstveni sektor u Hrvatkoj, kako bi naši građani imali iste mogućnosti i standarde prilikom liječenja kao i svi ostali građani u EU? ? zaključio je zastupnik Sokol.', '', 'politika', 0),
(7, '2022.06.19', '', '', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
