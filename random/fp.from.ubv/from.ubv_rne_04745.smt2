(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b11110000010100101111110111110011111101111100001101111010001010001101110111101111010010011101110010110011101011011011111100101111))
;; x should be 319445638109531995044574328775292862255

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.leq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
