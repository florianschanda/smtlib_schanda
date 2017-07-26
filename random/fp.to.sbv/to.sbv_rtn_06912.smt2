(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC5AFBB54)))
;; x should be Float32(0xC5AFBB54 [Rational(-2879189, 512), -5623.416016])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -5624

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111110101000001000))
;; z should be -5624

(assert (not (= y z)))
(check-sat)
(exit)
