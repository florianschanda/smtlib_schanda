(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC8574DCF)))
;; x should be Float32(0xC8574DCF [Rational(-14110159, 64), -220471.234375])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -220472

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111001010001011001000))
;; z should be -220472

(assert (not (= y z)))
(check-sat)
(exit)
