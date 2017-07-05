(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7068912049632967153911522473208606243133544921875p-46 {+ 3183554967264184 -46 (2.42564e-014)}
; Y = 1.0001776787926164313802246397244744002819061279296875p-343 {+ 800194144219 -343 (5.58198e-104)}
; 1.7068912049632967153911522473208606243133544921875p-46 % 1.0001776787926164313802246397244744002819061279296875p-343 == 1.56145805692738282033360519562847912311553955078125p-344
; [HW: 1.56145805692738282033360519562847912311553955078125p-344] 

; mpf : + 2528582295962324 -344
; mpfd: + 2528582295962324 -344 (4.35724e-104) class: Pos. norm. non-zero
; hwf : + 2528582295962324 -344 (4.35724e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010001 #b1011010011110110110100100110111100100101101110111000)))
(assert (= y (fp #b0 #b01010101000 #b0000000000001011101001001111010010011010011111011011)))
(assert (= r (fp #b1 #b01010100101 #xc16e4b4283388)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
