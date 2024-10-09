import { Component } from "@angular/core";
import { RouterOutlet } from "@angular/router";
import { HomepageComponent } from "./homepage/homepage.component";

@Component({
	selector: "app-root",
	standalone: true,
	imports: [HomepageComponent],
	templateUrl: "./app.component.html",
	styleUrl: "./app.component.scss",
})
export class AppComponent {
	title = "jobboard";
}