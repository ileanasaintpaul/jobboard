import { Component } from "@angular/core";
import { NavbarComponent } from "../../components/navbar/navbar.component";
import { AdvertisementComponent } from "../../components/advertisement/advertisement.component";

@Component({
	selector: "app-homepage",
	standalone: true,
	imports: [NavbarComponent, AdvertisementComponent],
	templateUrl: "./homepage.component.html",
	styleUrl: "./homepage.component.scss",
})
export class HomepageComponent {}
