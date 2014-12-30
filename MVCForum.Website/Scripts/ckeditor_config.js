CKEDITOR.editorConfig = function (config) {
    //Define changes to default configuration here. For example:
    //config.language = 'fr';
    //config.skin = 'office2003';
    //config.skin = 'v2';
    //config.uiColor = '#AADC6E';
    //config.toolbar = 'Basic';
    //config.removePlugins = 'elementspath,enterkey,entities,forms,pastefromword,htmldataprocessor,specialchar,horizontalrule,wsc';

    config.skin = 'kama';

    CKEDITOR.config.toolbar = [
            ['Bold', 'Italic', 'Underline'],
            ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
            ['FontSize', '-', 'TextColor', 'BGColor'],
            ['RemoveFormat'],
            ['NumberedList', 'BulletedList'],
            '/',
            ['Outdent', 'Indent'],
            ['Link', 'Unlink'],
            ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar'],
            ['Maximize', 'Source', 'syntaxhighlight'],
            ['Video']
        ];
    config.resize_enabled = false;
    //config.resize_maxHeight = 600;
    //config.resize_maxWidth = 500;
    //config.resize_minHeight = 600;
    //config.resize_minWidth = 500;
    config.width = '90%';
    config.height = '500';
    //config.toolbarStartupExpanded = false;
    //config.fullPage = true;
    config.toolbarCanCollapse = false;
    //config.toolbarLocation = 'bottom';
    //config.editingBlock = false;
    //config.entities = false;
    config.extraPlugins = 'video';

};