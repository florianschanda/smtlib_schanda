(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x783E06A7)))
;; x should be Float32(0x783E06A7 [Rational(15416739510662172524808064185925632), 15416739510662172524808064185925632.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 15416739510662172524808064185925632

(declare-const z Int)
(assert (= z 15416739510662172524808064185925632))
(assert (= y z))
