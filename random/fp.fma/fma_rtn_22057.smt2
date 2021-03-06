(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A37CC52)))
;; y should be Float32(0x4A37CC52 [Rational(6022697, 2), 3011348.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCC6199AF)))
;; z should be Float32(0xCC6199AF [Rational(-59139772), -59139772.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCC6199AF))))
(check-sat)
(exit)
