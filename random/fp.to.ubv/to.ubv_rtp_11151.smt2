(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b11110010110111011001000)))
;; x should be Float32(0x49F96EC8 [Rational(2043353), 2043353.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 2043353

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000111110010110111011001))
;; z should be 2043353

(assert (= y z))
(check-sat)
(exit)
