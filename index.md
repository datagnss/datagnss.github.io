<style>
.support-home {
    --bg: #f6f1e7;
    --panel: rgba(255, 255, 255, 0.82);
    --panel-strong: #ffffff;
    --text: #16212d;
    --muted: #5f6c7b;
    --line: rgba(22, 33, 45, 0.10);
    --accent: #0f5b86;
    --accent-2: #b85c38;
    --shadow: 0 24px 60px rgba(22, 33, 45, 0.12);

    position: relative;
    box-sizing: border-box;
    width: 100%;
    max-width: 1020px;
    margin: 0 auto;
    padding: 44px 20px 72px;
    color: var(--text);
}

.support-home::before,
.support-home::after {
    content: "";
    position: absolute;
    inset: auto;
    pointer-events: none;
    z-index: -1;
    border-radius: 999px;
    filter: blur(8px);
    opacity: 0.9;
}

.support-home::before {
    width: 320px;
    height: 320px;
    top: 10px;
    right: -40px;
    background: radial-gradient(circle, rgba(15, 91, 134, 0.18), transparent 68%);
}

.support-home::after {
    width: 280px;
    height: 280px;
    left: -40px;
    top: 280px;
    background: radial-gradient(circle, rgba(184, 92, 56, 0.15), transparent 70%);
}

.support-hero {
    position: relative;
    overflow: hidden;
    background:
        linear-gradient(135deg, rgba(255, 255, 255, 0.92), rgba(255, 250, 244, 0.88)),
        linear-gradient(180deg, #fff, #f7f4ef);
    border: 1px solid rgba(22, 33, 45, 0.08);
    border-radius: 28px;
    box-shadow: var(--shadow);
    padding: 34px 34px 30px;
    margin-bottom: 26px;
}

.support-hero::before {
    content: "";
    position: absolute;
    inset: 0;
    background:
        linear-gradient(135deg, rgba(15, 91, 134, 0.10), transparent 34%),
        linear-gradient(315deg, rgba(184, 92, 56, 0.08), transparent 30%);
    pointer-events: none;
}

.support-kicker {
    position: relative;
    display: inline-flex;
    align-items: center;
    gap: 10px;
    font-size: 0.8rem;
    letter-spacing: 0.18em;
    text-transform: uppercase;
    color: var(--accent);
    margin-bottom: 14px;
}

.support-kicker::before {
    content: "";
    width: 28px;
    height: 2px;
    background: linear-gradient(90deg, var(--accent), rgba(15, 91, 134, 0.25));
    border-radius: 99px;
}

.support-hero h1 {
    position: relative;
    margin: 0;
    font-size: clamp(2.4rem, 4.2vw, 4.6rem);
    line-height: 0.98;
    letter-spacing: -0.04em;
}

.support-hero p {
    display: none;
}

.support-grid {
    display: grid;
    grid-template-columns: repeat(12, minmax(0, 1fr));
    gap: 20px;
}

.support-card {
    grid-column: span 6;
    background: var(--panel);
    border: 1px solid var(--line);
    border-radius: 22px;
    padding: 24px 24px 22px;
    box-shadow: 0 14px 30px rgba(22, 33, 45, 0.06);
    backdrop-filter: blur(8px);
    transition: transform 180ms ease, box-shadow 180ms ease, border-color 180ms ease;
}

.support-card:hover {
    transform: translateY(-2px);
    border-color: rgba(15, 91, 134, 0.18);
    box-shadow: 0 20px 40px rgba(22, 33, 45, 0.10);
}

.support-card--wide {
    grid-column: span 12;
}

.support-card h2 {
    margin: 0;
    padding-bottom: 12px;
    font-size: 1.28rem;
    line-height: 1.25;
    letter-spacing: -0.02em;
    border-bottom: 1px solid rgba(22, 33, 45, 0.10);
}

.support-list {
    list-style: none;
    padding: 0;
    margin: 12px 0 0;
    display: grid;
    gap: 8px;
}

.support-list li {
    border: 1px solid rgba(22, 33, 45, 0.08);
    border-radius: 14px;
    background: rgba(255, 255, 255, 0.70);
    overflow: hidden;
}

.support-list li:hover {
    border-color: rgba(15, 91, 134, 0.18);
    background: rgba(255, 255, 255, 0.92);
}

.support-list a {
    display: block;
    padding: 11px 16px;
    color: var(--text);
    text-decoration: none;
    transition: color 160ms ease, transform 160ms ease;
}

.support-list a:hover {
    color: var(--accent);
    transform: translateX(2px);
}

.support-list a::after {
    content: "↗";
    float: right;
    color: rgba(22, 33, 45, 0.35);
    font-size: 0.9em;
}

@media (max-width: 960px) {
    .support-card {
        grid-column: span 12;
    }

    .support-home {
        padding-inline: 16px;
    }

    .support-hero {
        padding: 28px 22px 24px;
    }
}

@media (max-width: 640px) {
    .support-home {
        padding-top: 20px;
    }

    .support-hero h1 {
        font-size: 2.1rem;
    }

    .support-hero p {
        font-size: 1rem;
    }

    .support-card {
        padding: 20px;
    }
}
</style>

<main class="support-home">
    <section class="support-hero">
        <div class="support-kicker">DATAGNSS Support Center</div>
        <h1>Support center</h1>
    </section>

    <section class="support-grid">
        <div class="support-card">
            <h2 id="rtk-receiver">RTK receiver</h2>
            <ul class="support-list">
                <li><a href="/gnss/rtk_receiver/NANO/nano-rtk-receiver-esp32/">NANO RTK Receiver Pro</a></li>
                <li><a href="/gnss/rtk_receiver/NANO/nano-helix-rtk">NANO HRTK Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/NANO-H10P">NANO H10P RTK Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/NANO/nano-agr-sma">NANO-AGR-SMA Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/GEM1305">GEM1305 RTK Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/MA-10P/">NANO MA-10P PPP Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/DGM10-PPP">NANO DGM10-PPP Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/DGM10-A01">DGM10-A01 RTK Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/HED-10L/">NANO HED-10L Heading RTK Receiver</a></li>
            </ul>
        </div>

        <div class="support-card">
            <h2 id="rtk-for-autopilotardupilotpx4">RTK for Autopilot<br>(Ardupilot/PX4)</h2>
            <ul class="support-list">
                <li><a href="/gnss/rtk_receiver/GEM1305/">GEM1305 RTK Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/NANO/nano-rtk-receiver-esp32/">NANO RTK Receiver Pro</a></li>
                <li><a href="/gnss/rtk_receiver/NANO/nano-helix-rtk">NANO HRTK Receiver</a></li>
                <li><a href="/gnss/rtk_receiver/NANO-H10P">NANO H10P RTK Receiver</a></li>
                <li><a href="/gnss/antenna/helix-antenna/">Helix Antenna</a></li>
            </ul>
        </div>

        <div class="support-card">
            <h2 id="satrack-software">Satrack software</h2>
            <ul class="support-list">
                <li><a href="/common/common_satrack_guide/">Satrack Utility Software</a></li>
                <li><a href="/common/common_how_to_get_version">How to get fw and hw version</a></li>
                <li><a href="/common/common_how_to_verify_base_station">How to verify your base station</a></li>
            </ul>
        </div>

        <div class="support-card">
            <h2 id="antenna-for-rtk">Antenna for RTK</h2>
            <ul class="support-list">
                <li><a href="/gnss/antenna/helix-antenna/">Helix RTK Antenna</a></li>
                <li><a href="/gnss/antenna/at400-antenna/">AT400 RTK Antenna</a></li>
                <li><a href="/d303-docs/common/choice-of-antenna/">Choice of antenna</a></li>
            </ul>
        </div>

        <div class="support-card">
            <h2 id="related-guide">Application</h2>
            <ul class="support-list">
                <li><a href="gnss/rtk_receiver/surveying-and-mapping-kits/">Surveying and Mapping Kits</a></li>
                <li><a href="gnss/rtk_receiver/casestudy/setup-owned-base-and-rover">Setup owned base station</a></li>
            </ul>
        </div>

        <div class="support-card">
            <h2 id="faq">FAQ</h2>
            <ul class="support-list">
                <li><a href="/common/common_setup_base_rover">Config Base and Rover for RTK</a></li>
                <li><a href="/common/common_cmds_for_rtk">Common RTK Commands</a></li>
                <li><a href="/common/common_config_output_rate">How to config output rate</a></li>
                <li><a href="/common/common_config_uart_baud_rate">How to change uart baud rate</a></li>
                <li><a href="/common/common_enable_msg_output">How to enable/disable specific message output</a></li>
                <li><a href="/common/common_convert_raw_data_to_rinex">Convert raw data to rinex</a></li>
            </ul>
        </div>

        <div class="support-card support-card--wide">
            <h2 id="resource-and-download">Resource and download</h2>
            <ul class="support-list">
                <li><a href="/rtk-board/files/Satrack_client_V1.31.007.zip">Download the latest Satrack v1.31.007</a></li>
                <li><a href="/rtk-board/files/CP210x_Universal_Windows_Driver.zip">CP210x Windows Drivers</a></li>
                <li><a href="/rtk-board/files/drivers/Windows-CH340-Driver.zip">CH34x Drivers (Windows)</a></li>
                <li><a href="/rtk-board/files/drivers/CH341SER_MAC.ZIP">CH34x Drivers (Mac)</a></li>
                <li><a href="/rtk-board/files/drivers/CH341SER_LINUX.ZIP">CH34x Drivers (Linux)</a></li>
                <li><a href="/rtk-board/files/com0com-3.0.0.0-i386-and-x64-signed.zip">Virtual Com Port (com0com Windows Drivers)</a></li>
                <li><a href="/assets/software/sscom.zip">SSCOM utilities (sscom.zip)</a></li>
            </ul>
        </div>
    </section>
</main>
