(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC79808DF)))
;; y should be Float32(0xC79808DF [Rational(-9963743, 128), -77841.742188])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7FBFD772)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
