(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1783966718506799775667559515568427741527557373046875p-954 {+ 803427184870859 -954 (7.73884e-288)}
; Y = 1.7411914476422827302570794927305541932582855224609375p-1001 {+ 3338029527411983 -1001 (8.12495e-302)}
; 1.1783966718506799775667559515568427741527557373046875p-954 > 1.7411914476422827302570794927305541932582855224609375p-1001 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000101 #b0010110110101011011001110111111101010000010111001011)))
(assert (= y (fp #b0 #b00000010110 #b1011110110111110101110010000001110110010110100001111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
