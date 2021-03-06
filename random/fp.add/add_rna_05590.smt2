(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA39571E)))
;; x should be Float32(0xCA39571E [Rational(-6073231, 2), -3036615.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00010110001001100010111)))
;; y should be Float32(0x000B1317 [Rational(725783, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result ((_ to_fp 8 24) #xCA39571E))))
(check-sat)
(exit)
