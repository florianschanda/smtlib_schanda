(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RTN rounded_int)
(declare-const x Int)
(assert (= x 86465193565483153933378891109735895572))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x7E82192E [Rational(86465189932172101072523840909117227008), 86465189932172101072523840909117227008.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7E82192E)))
(assert (= y z))
