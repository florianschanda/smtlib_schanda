(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA4F5FD2)))
;; x should be Float32(0xCA4F5FD2 [Rational(-6795241, 2), -3397620.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10100110101101001001111)))
;; y should be Float32(0x80535A4F [Rational(-5462607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000001)))
;; z should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b00010110 #b00001110000101001110001))))
(check-sat)
(exit)
