(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000100 #b10010100011010000111101)))
;; x should be Float32(0x424A343D [Rational(13251645, 262144), 50.551014])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 50

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000110010))
;; z should be 50

(assert (not (= y z)))
(check-sat)
(exit)
