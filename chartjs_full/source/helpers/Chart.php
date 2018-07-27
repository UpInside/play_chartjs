<?php
/**
 * Created by PhpStorm.
 * User: gustavoweb
 * Date: 25/07/2018
 * Time: 16:47
 */

namespace Helpers;

class Chart {

    public function getColorRedOnly()
    {
        return "rgb(228, 87, 87, 1)";
    }

    public function getColorRedOnlyWithOpacity()
    {
        return "rgb(228, 87, 87, 0.2)";
    }

    public function getColorBlueOnly()
    {
        return "rgb(87, 188, 228, 1)";
    }

    public function getColorBlueOnlyWithOpacity()
    {
        return "rgb(87, 188, 228, 0.2)";
    }

    public function getColorGreenOnly()
    {
        return "rgb(87, 228, 141, 1)";
    }

    public function getColorGreenOnlyWithOpacity()
    {
        return "rgb(87, 228, 141, 0.2)";
    }

    public function getLabel($records)
    {
        $return = '';

        foreach($records as $record){
            $return .= $record['label'] . "|";
        }

        return substr($return, 0, strlen($return) - 1);

    }

    public function getValue($records)
    {
        $return = '';

        foreach($records as $record){
            $return .= $record['value'] . "|";
        }

        return substr($return, 0, strlen($return) - 1);

    }

    public function getColorRandom($records, bool $opacity)
    {
        $return = '';

        if($opacity == true){

            $colors[] = $this->getColorRedOnlyWithOpacity();
            $colors[] = $this->getColorGreenOnlyWithOpacity();
            $colors[] = $this->getColorBlueOnlyWithOpacity();

            $colors[] = $this->getColorRedOnlyWithOpacity();
            $colors[] = $this->getColorGreenOnlyWithOpacity();
            $colors[] = $this->getColorBlueOnlyWithOpacity();

            $colors[] = $this->getColorRedOnlyWithOpacity();
            $colors[] = $this->getColorGreenOnlyWithOpacity();
            $colors[] = $this->getColorBlueOnlyWithOpacity();

            $colors[] = $this->getColorRedOnlyWithOpacity();
            $colors[] = $this->getColorGreenOnlyWithOpacity();
            $colors[] = $this->getColorBlueOnlyWithOpacity();

        } else {

            $colors[] = $this->getColorRedOnly();
            $colors[] = $this->getColorGreenOnly();
            $colors[] = $this->getColorBlueOnly();

            $colors[] = $this->getColorRedOnly();
            $colors[] = $this->getColorGreenOnly();
            $colors[] = $this->getColorBlueOnly();

            $colors[] = $this->getColorRedOnly();
            $colors[] = $this->getColorGreenOnly();
            $colors[] = $this->getColorBlueOnly();

            $colors[] = $this->getColorRedOnly();
            $colors[] = $this->getColorGreenOnly();
            $colors[] = $this->getColorBlueOnly();

        }

        for($i = 0; $i < count($records); $i++){
            $return .= $colors[$i] . "|";
        }

        return substr($return, 0, strlen($return) - 1);
    }
}