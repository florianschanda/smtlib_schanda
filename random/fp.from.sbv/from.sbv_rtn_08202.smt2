(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1010100100011010110100111000010101011100001011010000000011011100))
;; x should be -6261459762174689060

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (fp.leq r (fp #b1 #b10111101 #b01011011100101001011001)))
(check-sat)
(exit)
