import { Component } from "@angular/core";
import { Routes } from "@angular/router";
import { HomepageComponent } from "./pages/homepage/homepage.component";
import { LoginPageComponent } from "./pages/login-page/login-page.component";
import { SignupPageComponent } from "./pages/signup-page/signup-page.component";
import { ApplyPageComponent } from "./pages/apply-page/apply-page.component";

export const routes: Routes = [
	{ path: "", component: HomepageComponent },
	{ path: "login", component: LoginPageComponent },
	{ path: "signup", component: SignupPageComponent },
	{ path: "apply", component: ApplyPageComponent },
];
