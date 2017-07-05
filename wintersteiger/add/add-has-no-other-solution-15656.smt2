(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.785928665838820261768660202505998313426971435546875p552 {+ 3539508046611502 552 (2.63282e+166)}
; Y = -1.106251814931674903874636584077961742877960205078125p-71 {- 478515634133730 -71 (-4.68516e-022)}
; 1.785928665838820261768660202505998313426971435546875p552 + -1.106251814931674903874636584077961742877960205078125p-71 == 1.785928665838820261768660202505998313426971435546875p552
; [HW: 1.785928665838820261768660202505998313426971435546875p552] 

; mpf : + 3539508046611502 552
; mpfd: + 3539508046611502 552 (2.63282e+166) class: Pos. norm. non-zero
; hwf : + 3539508046611502 552 (2.63282e+166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100111 #b1100100100110010100111101111110011000100010000101110)))
(assert (= y (fp #b1 #b01110111000 #b0001101100110011010100011010011001000101101011100010)))
(assert (= r (fp #b0 #b11000100111 #b1100100100110010100111101111110011000100010000101110)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
