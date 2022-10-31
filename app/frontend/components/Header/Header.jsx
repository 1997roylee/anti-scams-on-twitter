import { Container } from "../Container"
import { HeaderWrapper } from "./Header.styles"


export const Header = () => {
    return <HeaderWrapper>
        <Container>
            <div class='flex'>
                <button>Report a Twitter Account</button>
                <button>Report a Twitter Account</button>
            </div>
        </Container>
    </HeaderWrapper>
}

// Path: app/frontend/components/Header/Header.styles.jsx