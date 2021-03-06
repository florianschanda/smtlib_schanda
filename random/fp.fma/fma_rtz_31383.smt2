(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA268F5A)))
;; x should be Float32(0xCA268F5A [Rational(-5457837, 2), -2728918.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8041DEF9)))
;; y should be Float32(0x8041DEF9 [Rational(-4316921, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x807FFFFF)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b00010101 #b01010110110110111011000))))
(check-sat)
(exit)
