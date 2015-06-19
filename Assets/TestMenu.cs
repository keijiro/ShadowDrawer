using UnityEngine;

public class TestMenu : MonoBehaviour
{
    public GameObject opaqueSet;
    public GameObject shadowSet;
    public GameObject testCard;

    bool showShadowsOnly;
    bool showTestCard;

    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 200, 60), "Switch Shader"))
        {
            showShadowsOnly = !showShadowsOnly;
            opaqueSet.SetActive(!showShadowsOnly);
            shadowSet.SetActive(showShadowsOnly);
        }

        if (GUI.Button(new Rect(0, 80, 200, 60), "Test Card"))
        {
            showTestCard = !showTestCard;
            testCard.SetActive(showTestCard);
        }
    }
}
