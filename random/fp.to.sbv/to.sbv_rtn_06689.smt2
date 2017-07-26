(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01001010000110111011110)))
;; x should be Float32(0x4A250DDE [Rational(5408495, 2), 2704247.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 2704247

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001010010100001101110111))
;; z should be 2704247

(assert (= y z))
(check-sat)
(exit)
