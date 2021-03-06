(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b11000110100110111001010010000010101101001010000101101101111001011110100011001111010111000010010011011010101111110101100101100110))
;; x should be -76287405590267297240585129422586160794

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #xFE6591AE)))
(check-sat)
(exit)
