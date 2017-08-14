(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; float -> binary interchange
(declare-const x Float32)
(assert (= x (fp #b0 #b10101110 #b10100101101110010000000)))
;; x should be Float32(0x5752DC80 [Rational(231844482121728), 231844482121728.000000])

(declare-const y (_ BitVec 32))
(assert (= ((_ to_fp 8 24) y) x))
;; y should be #b01010111010100101101110010000000

(assert (not (= y #b01010111010100101101110010000000)))
(check-sat)
(exit)
