(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.539814563727893936828650112147442996501922607421875p-935 {- 2431108668054110 -935 (-5.30179e-282)}
; Y = -1.28375692683121922499367428827099502086639404296875p-287 {- 1277927589940876 -287 (-5.16267e-087)}
; -1.539814563727893936828650112147442996501922607421875p-935 > -1.28375692683121922499367428827099502086639404296875p-287 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011000 #b1000101000110001010010011000100100011101101001011110)))
(assert (= y (fp #b1 #b01011100000 #b0100100010100100010010110100000011000000111010001100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
