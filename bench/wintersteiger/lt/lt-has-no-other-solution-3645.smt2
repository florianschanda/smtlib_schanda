(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1574136093498090804843059231643564999103546142578125p499 {- 708927872410845 499 (-1.89433e+150)}
; Y = -1.69298592948962234316923058941029012203216552734375p-392 {- 3120931173822460 -392 (-1.6784e-118)}
; -1.1574136093498090804843059231643564999103546142578125p499 < -1.69298592948962234316923058941029012203216552734375p-392 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110010 #b0010100001001100010000100010000000011010010011011101)))
(assert (= y (fp #b1 #b01001110111 #b1011000101100111100001101001111110111110111111111100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
