(set-info :smt-lib-version 2.6)
(set-logic QF_UFFPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP +inf)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be unspecified

(declare-const z Int)
(assert (= z (- 405389008974138548502942211278793786318)))
(assert (not (= y z)))
