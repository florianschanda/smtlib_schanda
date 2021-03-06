(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10101001110001111110011)))
;; x should be Float32(0x4AD4E3F3 [Rational(13951987, 2), 6975993.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x007FFFFF)))
;; y should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x40E17DBA)))
;; z should be Float32(0x40E17DBA [Rational(7388893, 1048576), 7.046597])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x40E17DBA))))
(check-sat)
(exit)
