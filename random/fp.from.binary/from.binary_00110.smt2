(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary nan)
;; float -> binary interchange
;; this test relies on unspecified functions
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFFE284A2)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b11111111111000101000010010100010

(assert (= y #b11111111111000101000010010100010))
(check-sat)
(exit)
