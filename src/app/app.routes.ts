import { Component } from "@angular/core";
import { Routes } from "@angular/router";
import { HomepageComponent } from "./pages/homepage/homepage.component";
import { LoginPageComponent } from "./pages/login-page/login-page.component";
import { SignupPageComponent } from "./pages/signup-page/signup-page.component";

export const routes: Routes = [
	{ path: "", component: HomepageComponent },
	{ path: "login", component: LoginPageComponent },
	{ path: "signup", component: SignupPageComponent },
];
