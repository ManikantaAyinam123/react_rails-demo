function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

var _reactDom = require('react-dom');

var _reactDom2 = _interopRequireDefault(_reactDom);

var _propTypes = require('prop-types');

var _propTypes2 = _interopRequireDefault(_propTypes);

var _componentsApp = require('../components/App');

var _componentsApp2 = _interopRequireDefault(_componentsApp);

document.addEventListener('DOMContentLoaded', function () {
  _reactDom2['default'].render(_react2['default'].createElement(_componentsApp2['default'], null), document.body.appendChild(document.createElement('div')));
});
