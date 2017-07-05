(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.259770269131532227646630417439155280590057373046875p959 {- 1169901287262702 959 (-6.13843e+288)}
; Y = -1.20023691685671973772286946768872439861297607421875p860 {- 901786904141740 860 (-9.22706e+258)}
; -1.259770269131532227646630417439155280590057373046875p959 > -1.20023691685671973772286946768872439861297607421875p860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111110 #b0100001010000000010011011110101001100100100111101110)))
(assert (= y (fp #b1 #b11101011011 #b0011001101000010101110100000000101011001111110101100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
