(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1241417014082719649792352356598712503910064697265625p254 {- 559084520203433 254 (-3.25417e+076)}
; -1.1241417014082719649792352356598712503910064697265625p254 | == 1.1241417014082719649792352356598712503910064697265625p254
; [HW: 1.1241417014082719649792352356598712503910064697265625p254] 

; mpf : + 559084520203433 254
; mpfd: + 559084520203433 254 (3.25417e+076) class: Pos. norm. non-zero
; hwf : + 559084520203433 254 (3.25417e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111101 #b0001111111000111110000000010001110011110010010101001)))
(assert (= r (fp #b0 #b10011111101 #b0001111111000111110000000010001110011110010010101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
