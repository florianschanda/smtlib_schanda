(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00110010101001001001010)))
;; x should be Float32(0x0019524A [Rational(829733, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 118423428201032267800062488779420597278991875369736261.0 50925899408362152156711142210234454026286709841648406265903511233859532494083417654584934400.0))))
;; w should be Float32(0x0019524A [Rational(829733, 356811923176489970264571492362373784095686656), 0.000000])

(assert (= x w))
(check-sat)
(exit)
