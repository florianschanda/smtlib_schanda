(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0829833270659683375214399347896687686443328857421875p221 {+ 373723680852259 221 (3.64965e+066)}
; Y = -1.1677500012266393003557141128112562000751495361328125p303 {- 755478843015693 303 (-1.903e+091)}
; 1.0829833270659683375214399347896687686443328857421875p221 = -1.1677500012266393003557141128112562000751495361328125p303 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011011100 #b0001010100111110011001010011001111011100100100100011)))
(assert (= y (fp #b1 #b10100101110 #b0010101011110001101010100000000100101100001000001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
