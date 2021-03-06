(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11100110000000111001011)))
;; x should be Float32(0xCAF301CB [Rational(-15925707, 2), -7962853.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -7962853

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100001100111111100011011))
;; z should be -7962853

(assert (not (= y z)))
(check-sat)
(exit)
