(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x424A343D)))
;; x should be Float32(0x424A343D [Rational(13251645, 262144), 50.551014])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be 50

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000110010))
;; z should be 50

(assert (not (= y z)))
(check-sat)
(exit)
