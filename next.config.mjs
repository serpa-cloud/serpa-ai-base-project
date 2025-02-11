/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "**.serpa.cloud",
        port: "",
        pathname: "/random-image",
      },
    ],
  },
};

export default nextConfig;
