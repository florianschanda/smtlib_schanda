(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC8574E0F)))
;; x should be Float32(0xC8574E0F [Rational(-14110223, 64), -220472.234375])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -220473

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111001010001011000111))
;; z should be -220473

(assert (not (= y z)))
(check-sat)
(exit)
