(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x11BDBF00)))
;; x should be Float32(0x11BDBF00 [Rational(48575, 162259276829213363391578010288128), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00001000111001010111111)))
;; y should be Float32(0x800472BF [Rational(-291519, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x807FFFFF))))
(check-sat)
(exit)
