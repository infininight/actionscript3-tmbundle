﻿package fl.controls
{
import fl.containers.BaseScrollPane;
import fl.controls.listClasses.CellRenderer;
import fl.controls.listClasses.ICellRenderer;
import fl.controls.listClasses.ListData;
import fl.controls.ScrollPolicy;
import fl.core.InvalidationType;
import fl.core.UIComponent;
import fl.data.DataProvider;
import fl.data.SimpleCollectionItem;
import fl.events.DataChangeEvent;
import fl.events.DataChangeType;
import fl.events.ListEvent;
import fl.events.ScrollEvent;
import fl.managers.IFocusManagerComponent;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.ui.Keyboard;
import flash.utils.Dictionary;
public class SelectableList extends BaseScrollPane implements IFocusManagerComponent
{
		protected var listHolder : Sprite;
		protected var list : Sprite;
		protected var _dataProvider : DataProvider;
		protected var activeCellRenderers : Array;
		protected var availableCellRenderers : Array;
		protected var renderedItems : Dictionary;
		protected var invalidItems : Dictionary;
		protected var _horizontalScrollPosition : Number;
		protected var _verticalScrollPosition : Number;
		protected var _allowMultipleSelection : Boolean;
		protected var _selectable : Boolean;
		protected var _selectedIndices : Array;
		protected var caretIndex : int;
		protected var lastCaretIndex : int;
		protected var preChangeItems : Array;
		private var collectionItemImport : SimpleCollectionItem;
		protected var rendererStyles : Object;
		protected var updatedRendererStyles : Object;
		private static var defaultStyles : Object;
		public static var createAccessibilityImplementation : Function;
		public function set enabled (value:Boolean) : Void;
		public function get dataProvider () : DataProvider;
		public function set dataProvider (value:DataProvider) : Void;
		public function get maxHorizontalScrollPosition () : Number;
		public function set maxHorizontalScrollPosition (value:Number) : Void;
		public function get length () : uint;
		public function get allowMultipleSelection () : Boolean;
		public function set allowMultipleSelection (value:Boolean) : Void;
		public function get selectable () : Boolean;
		public function set selectable (value:Boolean) : Void;
		public function get selectedIndex () : int;
		public function set selectedIndex (value:int) : Void;
		public function get selectedIndices () : Array;
		public function set selectedIndices (value:Array) : Void;
		public function get selectedItem () : Object;
		public function set selectedItem (value:Object) : Void;
		public function get selectedItems () : Array;
		public function set selectedItems (value:Array) : Void;
		public function get rowCount () : uint;
		public static function getStyleDefinition () : Object;
		public function SelectableList ();
		public function clearSelection () : void;
		public function itemToCellRenderer (item:Object) : ICellRenderer;
		public function addItem (item:Object) : void;
		public function addItemAt (item:Object, index:uint) : void;
		public function removeAll () : void;
		public function getItemAt (index:uint) : Object;
		public function removeItem (item:Object) : Object;
		public function removeItemAt (index:uint) : Object;
		public function replaceItemAt (item:Object, index:uint) : Object;
		public function invalidateList () : void;
		public function invalidateItem (item:Object) : void;
		public function invalidateItemAt (index:uint) : void;
		public function sortItems (...sortArgs:Array) : *;
		public function sortItemsOn (field:String, options:Object =null) : *;
		public function isItemSelected (item:Object) : Boolean;
		public function scrollToSelected () : void;
		public function scrollToIndex (newCaretIndex:int) : void;
		public function getNextIndexAtLetter (firstLetter:String, startIndex:int =-1) : int;
		public function itemToLabel (item:Object) : String;
		public function setRendererStyle (name:String, style:Object, column:uint =0) : void;
		public function getRendererStyle (name:String, column:int =-1) : Object;
		public function clearRendererStyle (name:String, column:int =-1) : void;
		protected function configUI () : void;
		protected function _invalidateList () : void;
		protected function handleDataChange (event:DataChangeEvent) : void;
		protected function handleCellRendererMouseEvent (event:MouseEvent) : void;
		protected function handleCellRendererClick (event:MouseEvent) : void;
		protected function handleCellRendererChange (event:Event) : void;
		protected function handleCellRendererDoubleClick (event:MouseEvent) : void;
		protected function setHorizontalScrollPosition (scroll:Number, fireEvent:Boolean =false) : void;
		protected function setVerticalScrollPosition (scroll:Number, fireEvent:Boolean =false) : void;
		protected function draw () : void;
		protected function drawLayout () : void;
		protected function updateRendererStyles () : void;
		protected function drawList () : void;
		protected function keyDownHandler (event:KeyboardEvent) : void;
		protected function moveSelectionHorizontally (code:uint, shiftKey:Boolean, ctrlKey:Boolean) : void;
		protected function moveSelectionVertically (code:uint, shiftKey:Boolean, ctrlKey:Boolean) : void;
		protected function initializeAccessibility () : void;
		protected function onPreChange (event:DataChangeEvent) : void;
}
}
