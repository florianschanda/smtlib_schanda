(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.076545127985066852005502369138412177562713623046875p-663 {- 344728609870574 -663 (-2.81284e-200)}
; Y = 1.41191224497729184150784931262023746967315673828125p711 {+ 1855087832989076 711 (1.52102e+214)}
; -1.076545127985066852005502369138412177562713623046875p-663 M 1.41191224497729184150784931262023746967315673828125p711 == 1.41191224497729184150784931262023746967315673828125p711
; [HW: 1.41191224497729184150784931262023746967315673828125p711] 

; mpf : + 1855087832989076 711
; mpfd: + 1855087832989076 711 (1.52102e+214) class: Pos. norm. non-zero
; hwf : + 1855087832989076 711 (1.52102e+214) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101101000 #b0001001110011000011101100010010101011101001011101110)))
(assert (= y (fp #b0 #b11011000110 #b0110100101110011000101001011010011111111110110010100)))
(assert (= r (fp #b0 #b11011000110 #b0110100101110011000101001011010011111111110110010100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
