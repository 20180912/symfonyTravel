<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Offer;

class TravelController extends AbstractController
{
    /**
     * @Route("/travel", name="travel")
     */
    public function showOffers()
    {
    	$offers = $this->getDoctrine()
                ->getRepository(Offer::class)
                ->findAll();
        return $this->render('travel/index.html.twig', array("offers"=>$offers));
    }


    /**
     * @Route("/detail/{id}", name="detail")
     */
    public function showDetail($id)
    {
    	$offers = $this->getDoctrine()
                ->getRepository(Offer::class)
                ->findOneById($id);
        return $this->render('travel/detail.html.twig', array("offers"=>$offers));
    }
}
