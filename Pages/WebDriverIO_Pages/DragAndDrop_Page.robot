*** Variables ***
${PageProof}    //android.widget.TextView[@text="Drag and Drop"]

${l1Drag}    //android.view.ViewGroup[@content-desc="drag-l1"]/android.widget.ImageView
${l2Drag}    //android.view.ViewGroup[@content-desc="drag-l2"]/android.widget.ImageView
${l3Drag}    //android.view.ViewGroup[@content-desc="drag-l3"]/android.widget.ImageView
${r1Drag}    //android.view.ViewGroup[@content-desc="drag-r1"]/android.widget.ImageView
${r2Drag}    //android.view.ViewGroup[@content-desc="drag-r2"]/android.widget.ImageView
${r3Drag}    //android.view.ViewGroup[@content-desc="drag-r3"]/android.widget.ImageView
${c1Drag}    //android.view.ViewGroup[@content-desc="drag-c1"]/android.widget.ImageView
${c2Drag}    //android.view.ViewGroup[@content-desc="drag-c2"]/android.widget.ImageView
${c3Drag}    //android.view.ViewGroup[@content-desc="drag-c3"]/android.widget.ImageView


${l1Drop}    //android.view.ViewGroup[@content-desc="drop-l1"]/android.view.ViewGroup
${l2Drop}    //android.view.ViewGroup[@content-desc="drop-l2"]/android.view.ViewGroup
${l3Drop}    //android.view.ViewGroup[@content-desc="drop-l3"]/android.view.ViewGroup
${r1Drop}    //android.view.ViewGroup[@content-desc="drop-r1"]/android.view.ViewGroup
${r2Drop}    //android.view.ViewGroup[@content-desc="drop-r2"]/android.view.ViewGroup
${r3Drop}    //android.view.ViewGroup[@content-desc="drop-r3"]/android.view.ViewGroup
${c1Drop}    //android.view.ViewGroup[@content-desc="drop-c1"]/android.view.ViewGroup
${c2Drop}    //android.view.ViewGroup[@content-desc="drop-c2"]/android.view.ViewGroup
${c3Drop}    //android.view.ViewGroup[@content-desc="drop-c3"]/android.view.ViewGroup

${CongratsProof}    //android.widget.TextView[@text="You made it, click retry if you want to try it again."]