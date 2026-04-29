(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.59220027051245693883174681104719638824462890625p648 {+ 2667032917608608 648 (1.85967e+195)}
; Y = 1.6081477954460552393101124835084192454814910888671875p-737 {+ 2738854184957043 -737 (2.22443e-222)}
; 1.59220027051245693883174681104719638824462890625p648 / 1.6081477954460552393101124835084192454814910888671875p-737 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000111 #b1001011110011010011011111101101010001000100010100000)))
(assert (= y (fp #b0 #b00100011110 #b1001101110101111100100101110110010010011010001110011)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
