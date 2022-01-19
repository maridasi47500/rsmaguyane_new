Rails.application.routes.draw do
  devise_for :users
  get "/:id-:title.html", to: "welcome#category"
  post "myroute", to: "welcome#myroute", as: :myroute
  get "/component/search/", to: "welcome#mysearch", as: :mysearch
  post "/component/search/", to: "welcome#mysearch", as: :mysearchtoo
  post "/", to: "welcome#search"
  get "/contact.html", to: "welcome#contact"
  get "/la-vie-au-rsma/la-guyane.html", to: "viersma#laguyane"
  get "/la-vie-au-rsma/csa.html", to: "viersma#csa"
  get "/la-vie-au-rsma/mutation.html", to: "viersma#mutation"
  get "/la-vie-au-rsma/biographie-du-chef-de-corps.html", to: "viersma#biochefcorps"
  get "/la-vie-au-rsma/mot-du-chef-de-corps.html", to: "viersma#motchefcorps"
  get "/s-engager-au-rsma/etre-reserviste.html", to: "sengager#reserviste"
  get "/s-engager-au-rsma/les-engages-volontaires-du-sma.html", to: "sengager#evsma"
  get "/s-engager-au-rsma/devenir-volontaire-technicien.html", to: "sengager#vt"
  get "/s-engager-au-rsma/devenir-volontaire-stagiaire.html", to: 'sengager#vs'
  get "/s-engager-au-rsma.html", to: "sengager#index"
  get "/espace-entreprises-partenaires/notre-restaurant-d-application.html", to: "espaceentreprises#restaurantapplication"
  get "/espace-entreprises-partenaires/label-sma.html", to: "espaceentreprises#labelsma"
  get "/espace-entreprises-partenaires/les-fonds-europeens.html", to: "espaceentreprises#fondseuropeens"
  get "/espace-entreprises-partenaires/taxe-d-apprentissage.html", to: "espaceentreprises#taxeapprentissage"
  get "/espace-entreprises-partenaires/des-jeunes-prets-a-l-emploi.html", to: "espaceentreprises#jeunesemploi"
  get "/espace-entreprises-partenaires.html", to: 'espaceentreprises#index'
  get "/nos-formations/consolidation-savoirs.html", to: "formations#consolidationsavoirs"
  get "/nos-formations/formations-professionnelles/installateur-sanitaire-plomberie-metiers-du-froid.html", to: "formations#installateursanitaire"
  get "/nos-formations/formations-professionnelles/electricien-d-equipement.html", to: "formations#electricienequipement"
  get "/nos-formations/formations-professionnelles/developpeur-web.html", to: "formations#developpeur"
  get "/nos-formations/formations-professionnelles/conducteur-transport-routier.html", to: "formations#ctr"
  get "/nos-formations/formations-professionnelles/conducteur-d-engins-de-travaux-publics.html", to: "formations#cetp"
  get "/nos-formations/formations-professionnelles/agent-de-prevention-et-de-securite.html", to: "formations#aps"
  get "/nos-formations/formations-professionnelles/agent-polyvalent-de-restauration.html", to: "formations#apr"
  get "/nos-formations/formations-professionnelles/agent-magasinier.html", to: "formations#agentmagasinier"
  get "/nos-formations/formations-professionnelles/agent-d-entretien-du-batiment.html", to: "formations#entretienbatiment6"
  get "/nos-formations/formations-professionnelles/agent-d-entretien-du-batiment-10-mois.html", to: "formations#entretienbatiment10"
  get "/nos-formations/formations-professionnelles/agent-d-entretien-des-espaces-verts.html", to: "formations#agentespacevert"
  get "/nos-formations/formations-professionnelles/agent-d-entretien-automobile.html", to: "formations#agententretienauto"
  get "/nos-formations/formations-professionnelles/voirie-reseau-divers.html", to: "formations#voiries"
  get "/nos-formations/formations-professionnelles/remise-a-niveau-et-employabilite.html", to: "formations#remiseaniveau"
  get "/nos-formations/formations-professionnelles/plateforme-poursuite-de-formation.html", to: "formations#poursuiteformation"
  get "/nos-formations/formations-professionnelles/petite-enfance.html", to: "formations#petiteenfance"
  get "/nos-formations/formations-professionnelles/ouvrier-du-paysage.html", to: "formations#ouvrierpaysage"
  get "/nos-formations/formations-professionnelles/orientation-decouverte.html", to: "formations#orientationdecouverte"
  get "/nos-formations/formations-professionnelles/multitechniques.html", to: "formations#multitechnique"
  get "/formations-professionnelles/menuisier-en-batiment-menuiserie-charpente.html", to: "formations#menuisierbatiment"
  get "/formations-professionnelles/menuisier-en-batiment-menuiserie-agencement.html", to: "formations#menuisieragencement"
  get "/nos-formations/formations-professionnelles/mecanicien-petits-engins.html", to: "formations#mecanicienpetitengin"
  get "/nos-formations/formations-professionnelles/macon.html", to: "formations#macon"
  get "/nos-formations/formations-professionnelles.html",to: "formations#pro"
  get "/nos-formations/formation-militaire.html", to: "formations#fmi"
  get "/nos-formations/le-deroulement-des-formations.html", to: 'formations#deroulement'
  get "/nos-formations.html", to: 'formations#index'
  get "/rsma-guyane/temoignages.html", to: "rsmaguyane#temoignages"
  get "/rsma-guyane/nos-valeurs.html", to: "rsmaguyane#nosvaleurs"
  get "/rsma-guyane/les-compagnies.html", to: "rsmaguyane#lescompagnies"
  get "/rsma-guyane/implantation.html", to: "rsmaguyane#implantation"
  get "/rsma-guyane/le-regiment.html", to: "rsmaguyane#notrehistoire"
  get "/rsma-guyane/notre-organisation.html", to: "rsmaguyane#notreorganisation"
  get 'rsma-guyane/notre-mission.html', to: 'rsmaguyane#notremission'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
