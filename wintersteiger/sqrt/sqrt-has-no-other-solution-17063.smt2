(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4979765199871497571848522056825459003448486328125p388 {+ 2242686869853384 388 (9.44372e+116)}
; 1.4979765199871497571848522056825459003448486328125p388 S == 1.223918510353998012618603752343915402889251708984375p194
; [HW: 1.223918510353998012618603752343915402889251708984375p194] 

; mpf : + 1008439319791622 194
; mpfd: + 1008439319791622 194 (3.07306e+058) class: Pos. norm. non-zero
; hwf : + 1008439319791622 194 (3.07306e+058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000011 #b0111111101111011011000111010001110000101010011001000)))
(assert (= r (fp #b0 #b10011000001 #b0011100101010010101110010011011011110000100000000110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
