<!DOCTYPE html>
<html>
  <head>
    <title>Parcel Sandbox</title>
    <link rel="stylesheet" href="styles.css" />
    <meta charset="UTF-8" />
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  </head>
  <body>
    <div class="main">
      <div class="tabs">
        <div class="tab" data-tab-target="#tab1">
          <p>tab1</p>
        </div>
        <div class="tab" data-tab-target="#tab2">
          <p>tab2</p>
        </div>
        <div class="tab" data-tab-target="#tab3">
          <p>tab3</p>
        </div>
      </div>
    </div>
    <div class="content">
      <div id="tab1" data-tab-content class="items active">
        <h2>Tab1</h2>
        <p>11한글isj</p>
      </div>
      <div id="tab2" data-tab-content class="items">
        <h2>Tab2</h2>
        <p></p>
      </div>
      <div id="tab3" data-tab-content class="items">
        <h2>Tab3</h2>
        <p></p>
      </div>
    </div>
    <script src="index.js"></script>
  </body>
</html>
