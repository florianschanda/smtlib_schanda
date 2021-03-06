(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RNA precise_int)
(declare-const x Int)
(assert (= x 6211340965368624))
(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) x)))
;; y should be Float64(0x4336112E83D1D330 [Rational(6211340965368624), 6211340965368624.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x4336112E83D1D330)))
(assert (= y z))
