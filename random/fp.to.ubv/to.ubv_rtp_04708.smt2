(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49F70FD8)))
;; x should be Float32(0x49F70FD8 [Rational(2023931), 2023931.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 2023931

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000111101110000111111011))
;; z should be 2023931

(assert (= y z))
(check-sat)
(exit)
