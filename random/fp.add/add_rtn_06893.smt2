(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10110111011010110111111)))
;; x should be Float32(0xCADBB5BF [Rational(-14398911, 2), -7199455.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11011110110111110000111)))
;; y should be Float32(0x006F6F87 [Rational(7303047, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xCADBB5BF))))
(check-sat)
(exit)
